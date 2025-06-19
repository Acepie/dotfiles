return {
  {
    'rcarriga/nvim-notify',
    config = function()
      if vim.g.vscode then
        local vscode = require 'vscode'
        vim.notify = vscode.notify
      else
        local notify = require 'notify'
        notify.setup {
          background_colour = '#000000',
        }
        vim.notify = notify
      end
    end,
  },
}
