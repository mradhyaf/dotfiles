return {
  defaults = {
    prompt_prefix = "   ",
    selection_caret = " ",
    entry_prefix = " ",
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = {
        preview_width = 0.55,
      },
      width = 0.87,
      height = 0.80,
    },
    mappings = {
      -- i = { ["<CR>"] = require("telescope.actions").select_vertical },
      n = { ["<C-c>"] = require("telescope.actions").close },
    },
  },
}
