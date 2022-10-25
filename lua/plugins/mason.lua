require("mason").setup({
    ui = {
        icons = {
            package_installed = "?",
            package_pending = "?",
            package_uninstalled = "?",
        },
    },
})

require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "rust_analyzer" },
})

--[[  
:h mason-commands

:Mason - opens a graphical status window
:MasonInstall <package> ... - installs/reinstalls the provided packages
:MasonUninstall <package> ... - uninstalls the provided packages
:MasonUninstallAll - uninstalls all packages
:MasonLog - opens the mason.nvim log file in a new tab window
]]
--
