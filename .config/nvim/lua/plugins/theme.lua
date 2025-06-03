return { -- You can easily change to a different colorscheme.
  'maxmx03/fluoromachine.nvim',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    local fm = require 'fluoromachine'
    fm.setup {
      brightness = 0.03,
      glow = true,
      theme = 'delta',
      transparent = false,
    }
    vim.cmd.colorscheme 'fluoromachine'
  end,
}
