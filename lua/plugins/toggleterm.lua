
local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end


toggleterm.setup({
	size = 20,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "",
	},
})

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }


-- Toggle Term
map("n", "<leader>ot", ":ToggleTerm<CR>", default_opts)
map("t", "<esc><esc>", "<Cmd>:ToggleTerm<CR>", default_opts)

--map("t", "<esc>", [[<C-\><C-n>]], default_opts)
map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], default_opts)
map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], default_opts)
map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], default_opts)
map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], default_opts)
