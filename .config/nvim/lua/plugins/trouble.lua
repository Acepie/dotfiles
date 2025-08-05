return {
  'folke/trouble.nvim',
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = 'Trouble',
  keys = {
    {
      '<leader>td',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = '[T]oggle [D]iagnostics window',
    },
    {
      '<leader>tbd',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = '[T]oggle [B]uffer [D]iagnostics window',
    },
    {
      '<leader>ts',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = '[T]oggle [S]ymbols window',
    },
    {
      '<leader>tq',
      '<cmd>Trouble qflist toggle<cr>',
      desc = '[T]oggle [Q]uickfix window',
    },
  },
}
