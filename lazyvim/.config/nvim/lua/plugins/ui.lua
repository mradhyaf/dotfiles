return {
  -- Add more colorscheme
  { "ellisonleao/gruvbox.nvim" },
  { "sainnhe/everforest" },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        section_separators = { left = "🭟", right = "🭃" },
        component_separators = { left = "🭉🭙", right = "🭉🭙" },
      },
    },
  },
}
