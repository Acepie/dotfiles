return {
  {
    'augmentcode/augment.vim',
    cond = function()
      return jit.os == 'OSX'
    end,
  },
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {}
    end,
    cond = function()
      -- Only load on Linux x64 aka personal computer
      return jit.os == 'Linux' and jit.arch == 'x64'
    end,
  },
}
