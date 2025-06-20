--requirements
require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- SETUP START

	require("plugins.neotree"), -- NEOTREE
	require("plugins.colortheme"), -- COLOR THEMES
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.alpha"),
	require("plugins.comment"),
	require("plugins.autoformatting"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	require("plugins.misc"),
	-- require("plugins.noice"),
	require("plugins.flutter-tools"),

	-- SETUP END
})
