local Util = require("utils")

return {

	-- file explorer
	{
		"nvim-neo-tree/neo-tree.nvim",
		cmd = "Neotree",
		keys = {
			{
				"<leader>fe",
				function()
					require("neo-tree.command").execute({ toggle = true, dir = require("utils").get_root() })
				end,
				desc = "Explorer NeoTree (root dir)",
			},
			{
				"<leader>fb",
				function()
					require("neo-tree.command").execute({ toggle = true, dir = require("utils").get_root() })
				end,
				desc = "Explorer NeoTree (root dir)",
			},

			{
				"<leader>fE",
				function()
					require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
				end,
				desc = "Explorer NeoTree (cwd)",
			},
			{ "<leader>e", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
			{ "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
		},
		deactivate = function()
			vim.cmd([[Neotree close]])
		end,
		init = function()
			vim.g.neo_tree_remove_legacy_commands = 1
			if vim.fn.argc() == 1 then
				local stat = vim.loop.fs_stat(vim.fn.argv(0))
				if stat and stat.type == "directory" then
					require("neo-tree")
				end
			end
		end,
		opts = {
			filesystem = {
				bind_to_cwd = false,
				follow_current_file = true,
				use_libuv_file_watcher = true,
			},
			window = {
				mappings = {
					["<space>"] = "none",
				},
				width = 30,
			},
			default_component_configs = {
				indent = {
					with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
					expander_collapsed = "",
					expander_expanded = "",
					expander_highlight = "NeoTreeExpander",
				},
			},
		},
		config = function(_, opts)
			require("neo-tree").setup(opts)
			vim.api.nvim_create_autocmd("TermClose", {
				pattern = "*lazygit",
				callback = function()
					if package.loaded["neo-tree.sources.git_status"] then
						require("neo-tree.sources.git_status").refresh()
					end
				end,
			})
		end,
	},
	-- fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		commit = vim.fn.has("nvim-0.9.0") == 0 and "057ee0f8783" or nil,
		cmd = "Telescope",
		version = false, -- telescope did only one release, so use HEAD for now
		keys = {
			{ "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
			{ "<leader>/", Util.telescope("live_grep"), desc = "Grep (root dir)" },
			{ "<leader>fw", Util.telescope("live_grep"), desc = "Grep (root dir)" },
			-- { "<leader>ch", "<cmd>Telescope command_history<cr>", desc = "Command History" },
			{
				"<leader><space>",
				Util.telescope("files"),
				desc = "Find Files (root dir)",
			},
			-- find
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
			{
				"<leader>ff",
				Util.telescope("files"),
				desc = "Find Files (root dir)",
			},
			{ "<leader>fF", Util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
			-- { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
			-- { "<leader>fR", Util.telescope("oldfiles", { cwd = vim.loop.cwd() }), desc = "Recent (cwd)" },
			-- git
			-- { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "commits" },
			-- { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "status" },
			-- search
			-- { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
			-- { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
			-- { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
			-- { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
			-- {
			-- 	"<leader>sd",
			-- 	"<cmd>Telescope diagnostics bufnr=0<cr>",
			-- 	desc = "Document diagnostics",
			-- },
			-- {
			-- 	"<leader>sD",
			-- 	"<cmd>Telescope diagnostics<cr>",
			-- 	desc = "Workspace diagnostics",
			-- },
			-- { "<leader>sg", Util.telescope("live_grep"), desc = "Grep (root dir)" },
			-- { "<leader>sG", Util.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
			-- { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
			-- {
			-- 	"<leader>sH",
			-- 	"<cmd>Telescope highlights<cr>",
			-- 	desc = "Search Highlight Groups",
			-- },
			-- { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
			-- { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
			-- { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
			-- { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
			-- { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
			-- { "<leader>sw", Util.telescope("grep_string"), desc = "Word (root dir)" },
			-- { "<leader>sW", Util.telescope("grep_string", { cwd = false }), desc = "Word (cwd)" },
			-- {
			-- 	"<leader>ss",
			-- 	Util.telescope("lsp_document_symbols", {
			-- 		symbols = {
			-- 			"Class",
			-- 			"Function",
			-- 			"Method",
			-- 			"Constructor",
			-- 			"Interface",
			-- 			"Module",
			-- 			"Struct",
			-- 			"Trait",
			-- 			"Field",
			-- 			"Property",
			-- 		},
			-- 	}),
			-- 	desc = "Goto Symbol",
			-- },
			-- {
			-- 	"<leader>sS",
			-- 	Util.telescope("lsp_dynamic_workspace_symbols", {
			-- 		symbols = {
			-- 			"Class",
			-- 			"Function",
			-- 			"Method",
			-- 			"Constructor",
			-- 			"Interface",
			-- 			"Module",
			-- 			"Struct",
			-- 			"Trait",
			-- 			"Field",
			-- 			"Property",
			-- 		},
			-- 	}),
			-- 	desc = "Goto Symbol (Workspace)",
			-- },
		},
		opts = {
			defaults = {
				file_ignore_patterns = {
					"node_modules",
					"package-lock.json",
				},
				prompt_prefix = " ",
				selection_caret = " ",
				mappings = {
					i = {
						["<c-t>"] = function(...)
							return require("trouble.providers.telescope").open_with_trouble(...)
						end,
						["<a-t>"] = function(...)
							return require("trouble.providers.telescope").open_selected_with_trouble(...)
						end,
						["<a-i>"] = function()
							local action_state = require("telescope.actions.state")
							local line = action_state.get_current_line()
							Util.telescope("find_files", { no_ignore = true, default_text = line })()
						end,
						["<a-h>"] = function()
							local action_state = require("telescope.actions.state")
							local line = action_state.get_current_line()
							Util.telescope("find_files", { hidden = true, default_text = line })()
						end,
						["<C-Down>"] = function(...)
							return require("telescope.actions").cycle_history_next(...)
						end,
						["<C-Up>"] = function(...)
							return require("telescope.actions").cycle_history_prev(...)
						end,
						["<C-f>"] = function(...)
							return require("telescope.actions").preview_scrolling_down(...)
						end,
						["<C-b>"] = function(...)
							return require("telescope.actions").preview_scrolling_up(...)
						end,
					},
					n = {
						["q"] = function(...)
							return require("telescope.actions").close(...)
						end,
					},
				},
			},
		},
	},

	-- buffer remove
	{
		"echasnovski/mini.bufremove",
		-- stylua: ignore
		keys = {
			{ "<leader>bd", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer" },
			{ "<leader>bD", function() require("mini.bufremove").delete(0, true) end,  desc = "Delete Buffer (Force)" },
		},
	},
}
