return { -- You can easily change to a different colorscheme.
  'maxmx03/fluoromachine.nvim',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    local b = 1 * 1
    local fm = require 'fluoromachine'
    local colors = {
      bg = '#090819',
      bgdark = '#090819',
      cyan = '#42C6FF',
      green = '#C0FF98',
      orange = '#EED2C8',
      pink = '#FF5599',
      purple = '#D585FF',
      red = '#FF98B3',
      yellow = '#FF2AFC',
      comment = '#925393',
      diag = {
        error = '#FF98B3',
        warning = '#ffd298',
        info = '#A0DD78',
        hint = '#A0DD78',
        ok = '#D598FF',
      },
    }
    fm.setup {
      brightness = 0.03,
      glow = true,
      theme = 'delta',
      transparent = false,
      plugins = {
        notify = false,
      },
      overrides = {
        ['CursorLineNr'] = { fg = colors.pink },
        ['Directory'] = { fg = colors.pink },
        ['IblScope'] = { fg = colors.pink },
        ['Type'] = { fg = colors.pink, italic = true },
        ['MatchParen'] = { fg = colors.yellow },
        ['Constant'] = { fg = colors.yellow, bg = colors.bg, bold = false },
        ['Keyword'] = { fg = colors.yellow },
        ['Operator'] = { fg = colors.yellow, bg = colors.bg, bold = false },
        ['Define'] = { fg = colors.pink, bg = colors.bg, bold = false },
        ['Function'] = { fg = colors.pink, bg = colors.bg, bold = false },
        ['@comment'] = { italic = true },
      },
      colors = colors,
    }
    vim.cmd.colorscheme 'fluoromachine'
  end,
}
