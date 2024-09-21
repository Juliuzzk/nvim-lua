return {
    "Exafunction/codeium.nvim",
    enabled = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },

    config = function()
        require("codeium").setup({})
    end,
}
