vim.cmd("colorscheme ferrum")
vim.cmd("set shell=fish")
vim.cmd("set timeoutlen=100")

require("adam.options")
require("adam.keymaps")
require("adam.plugins")
require("adam.toggleterm")
require("adam.cmp")
require("adam.lsp")
require("adam.telescope")
require("adam.treesitter")
require("adam.autopairs")
require("adam.comment")
require("adam.gitsigns")
require("adam.nvim-tree")
require("adam.bufferline")
require("adam.lsp.null-ls")

local notify = vim.notify
vim.notify = function(msg, ...)
	if msg:match("warning: multiple different client offset_encodings") then
		return
	end

	notify(msg, ...)
end
