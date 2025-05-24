return { -- You can easily change to a different colorscheme.
  'maxmx03/fluoromachine.nvim',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    local fm = require 'fluoromachine'
    fm.setup {
      glow = true,
      theme = 'fluoromachine',
      transparent = true,
    }
    vim.cmd.colorscheme 'fluoromachine'
  end,
}
