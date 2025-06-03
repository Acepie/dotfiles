return {
  {
    'm4xshen/hardtime.nvim',
    lazy = false,
    dependencies = { 'MunifTanjim/nui.nvim' },
    opts = {
      disabled_keys = {
        ['<Up>'] = { 'n', 'x' },
        ['<Down>'] = { 'n', 'x' },
        ['<Left>'] = { 'n', 'x' },
        ['<Right>'] = { 'n', 'x' },
      },
    },
  },
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
  { 'augmentcode/augment.vim' },
}
