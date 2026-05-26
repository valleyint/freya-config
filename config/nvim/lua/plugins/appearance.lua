return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "catppuccin",
          globalstatus = true,
        },
      })
    end,
  },
  {
    "echasnovski/mini.animate",
    version = "*",
    config = function()
      require("mini.animate").setup()
    end,
  },
}
