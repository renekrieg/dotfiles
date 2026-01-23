local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
  -- the colorscheme should be available when starting Neovim
  {
    "catppuccin/nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("catppuccin").setup({
        auto_integrations = true,
        })
      vim.cmd("colorscheme catppuccin-macchiato")
      -- enable_transparency()
    end,
  },
}
