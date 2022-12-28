local _treesitter, treesitter = pcall(require, "nvim-treesitter.configs")

if not _treesitter then
	return
end

local colors = {
	bg = "#2e3440",
	fg = "#ECEFF4",
	red = "#bf616a",
	orange = "#d08770",
	yellow = "#ebcb8b",
	blue = "#5e81ac",
	green = "#a3be8c",
	cyan = "#88c0d0",
	magenta = "#b48ead",
	purple = "#534671",
	pink = "#FFA19F",
	grey1 = "#f8fafc",
	grey2 = "#f0f1f4",
	grey3 = "#eaecf0",
	grey4 = "#d9dce3",
	grey5 = "#c4c9d4",
	grey6 = "#b5bcc9",
	grey7 = "#929cb0",
	grey8 = "#8e99ae",
	grey9 = "#74819a",
	grey10 = "#616d85",
	grey11 = "#464f62",
	grey12 = "#3a4150",
	grey13 = "#333a47",
	grey14 = "#242932",
	grey15 = "#1e222a",
	grey16 = "#1c1f26",
	grey17 = "#0f1115",
	grey18 = "#0d0e11",
	grey19 = "#020203",
}
treesitter.setup({
	autotag = {
		enable = true,
		filetypes = { "*" }
	},
	indent = {
		enable = true,
		disable = { "python", "css", "rust" },
	},
	ensure_installed = {
		"java",
		"rust",
		"python",
		"go",
		"lua",
		"html",
		"json",
		"sql",
		"dockerfile",
		"yaml",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"vim",
		"help",
	},
	rainbow = {
		colors = {
			colors.magenta,
			colors.cyan,
			colors.yellow,
			colors.orange,
			colors.red,
			colors.blue,
			colors.green,
		},
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},

	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<CR>",
			scope_incremental = "<CR>",
			node_incremental = "<TAB>",
			node_decremental = "<S-TAB>",
		},
	},
	tree_docs = {
		enable = true,
	},
	-- Comment plugin extra
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})


local status_autotag_ok, autotag = pcall(require, "nvim-ts-autotag")

if not status_autotag_ok then
	vim.notify("nvim-ts-autotag: desactivado.");
	return
end

autotag.setup({
	filetypes = { "*" },
})

