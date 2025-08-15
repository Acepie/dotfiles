return {
  {
    'augmentcode/augment.vim',
    cond = function()
      return jit.os == 'OSX'
    end,
    config = function()
      vim.keymap.set('n', '<leader>l', '<cmd>Augment chat-toggle<CR>', { desc = 'Toggle chat window' })
    end,
  },
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {}
    end,
    cond = function()
      -- Only load on Linux x64 aka personal computer
      return jit.os == 'Linux' and jit.arch == 'x64' and not vim.env.HOME == '/home/coder'
    end,
  },
}
