local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

local mocha = require("catppuccin.palettes").get_palette "mocha"
require("bufferline").setup {
	options = {
	  close_command = "Bdelete! %d",       -- can be a string | function, see "Mouse actions"
	  right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
	  offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
	  separator_style = "thin",            -- | "thick" | "thin" | { 'any', 'any' },
	},
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

}



vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})



