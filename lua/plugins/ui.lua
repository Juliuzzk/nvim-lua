return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    event = "VimEnter",
    config = function()
      require("catppuccin").setup({
        flavour = "frappe", -- latte, frappe, macchiato, mocha
        background = {
          -- :h background
          light = "latte",
          dark = "mocha",
        },
        open_on_setup = true,
        transparent_background = true,
        show_end_of_buffer = false, -- show the '~' characters after the end of buffers
        term_colors = false,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
          telescope = true,
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })

      vim.cmd.colorscheme("catppuccin")
    end,
    -- setup must be called before loading
  },
}
