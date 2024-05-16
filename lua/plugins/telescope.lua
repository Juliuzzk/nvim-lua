return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- Re map Grep
      { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Find Words" },
      { "<leader>snp", "<cmd>Telescope luasnip<cr>", desc = "Lua Snips" },
    },
  },
  {
    "benfowler/telescope-luasnip.nvim",
  },
}
