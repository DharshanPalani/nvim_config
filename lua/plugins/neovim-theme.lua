return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      background = { dark = "mocha" },
      integrations = { 
        telescope = true,
        neo_tree = true,
        treesitter = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}

