local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

local mocha = require("catppuccin.palettes").get_palette "mocha"
require("bufferline").setup {
	options = {
	  mode = "tabs",   -- | tabs
	  close_command = "Bdelete! %d",       -- can be a string | function, see "Mouse actions"
	  right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
	  offsets = {{filetype = "NvimTree",separator = true, highlight = "FileExplorer",  text = "FileExplorer", text_align = "center"}},
	  separator_style = "thin",            -- | "thick" | "thin" | { 'any', 'any' },

	  indicator = {
              icon = '▎', -- this should be omitted if indicator style is not 'icon'
                style = 'underline' -- | 'underline' | 'none',
            },
		 indicator_icon = '▎',
		buffer_close_icon = '',
		modified_icon = '●',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',

	},
	--[[
	highlights = {
		buffer_selected = { bold = true },
		diagnostic_selected = { bold = true },
		info_selected = { bold = true },
		info_diagnostic_selected = { bold = true },
		warning_selected = { bold = true },
		warning_diagnostic_selected = { bold = true },
		error_selected = { bold = true },
		error_diagnostic_selected = { bold = true },
	},
	]]--

	highlights = require("catppuccin.groups.integrations.bufferline").get {
        styles = { "italic", "bold" },
        custom = {
            all = {
--                fill = { bg = "#000000" },
            },
            mocha = {
                background = { fg = mocha.text },
            },
            latte = {
                background = { fg = "#000000" },
            },
        },
    },

}



vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.cmd("hi FileExplorer gui=bold,italic")


