return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "mg979/vim-visual-multi",
    config = function()
      vim.g.VM_default_mappings = 0
      vim.g.VM_mouse_mappings = 1
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
        ["Find Subword Under"] = "<C-y>",
        ["Select Cursor Down"] = "<M-Down>",
        ["Select Cursor Up"] = "<M-Up>",
      }

      -- vim.keymap.set("n", "<C-x>", "<Plug>(VM-Find-Under)")
      vim.keymap.set("n", "<M-Down>", "<Plug>(VM-Select-Cursor-Down)")
      vim.keymap.set("n", "<M-Up>", "<Plug>(VM-Select-Cursor-Up)")
    end,
  },
  {
    "mbbill/undotree",
    config = function()
      vim.keymap.set("n", "<leader>uh", vim.cmd.UndotreeToggle)
      vim.g.undotree_WindowLayout = 3
    end,
  },
}
