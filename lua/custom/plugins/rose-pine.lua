-- rose-pine colorscheme
-- https://github.com/rose-pine/neovim

return {
  'rose-pine/neovim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  name = 'rose-pine',
  opts = {
    -- dark_variant = 'moon',
    styles = {
      transparency = true,
      italic = false,
    },
    highlight_groups = {
      Keyword = { italic = true },
      Boolean = { fg = 'pine' },
      ['@variable.builtin'] = { italic = true, fg = 'iris' },
      ['@parameter'] = { fg = 'text' },
      ['@constructor.lua'] = { fg = 'subtle' },
    },
  },
  config = function(_, opts)
    require('rose-pine').setup(opts)
    vim.cmd [[colorscheme rose-pine]]
  end,
}
