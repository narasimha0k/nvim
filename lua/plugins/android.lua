return {
	"ariedov/android-nvim",
	config = function()
		-- OPTIONAL: specify android sdk directory
		-- vim.g.android_sdk = "~/Library/Android/sdk"
		require("android-nvim").setup()
	end,
}
