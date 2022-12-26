local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local b = null_ls.builtins

local sources = {
	-- forma

	--[[ b.formatting.prettierd.with({
		extra_filetypes = { "toml" },
		extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
	}), ]]
	b.formatting.prettierd,
	b.formatting.stylua,
	b.formatting.sql_formatter,
	b.formatting.sqlfluff,

}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
				--vim.lsp.buf.formatting_sync()
				vim.lsp.buf.format { async = true }
			end,
		})
	end
end

null_ls.setup({
	debug = false,
	sources = sources,
	--on_attach = on_attach,
})

if true then
	return
end
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
--[[ local diagnostics = null_ls.builtins.diagnostics ]]

-- https://github.com/prettier-solidity/prettier-plugin-solidity
null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({
			extra_filetypes = { "toml" },
			extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
		}),
		formatting.prettierd,
		formatting.stylua,
		formatting.sql_formatter,
		formatting.sqlfluff,
	},
})
