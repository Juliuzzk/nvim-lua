require("null-ls").setup({
	sources = {
		require("null-ls").builtins.formatting.stylua,
		require("null-ls").builtins.diagnostics.eslint,
		require("null-ls").builtins.completion.spell,
		require("null-ls").builtins.code_actions.eslint_d,
	},

	--[[ Config prettier ]]
	on_attach = function(client, bufnr)
		if client.server_capabilities.documentFormattingProvider then
			--vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>")

			-- format on save
			--vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
		end

		if client.server_capabilities.documentRangeFormattingProvider then
			vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
		end
	end,
})
