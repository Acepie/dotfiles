return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'moll/vim-bbye',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    if vim.g.vscode then
      return
    end
    local bufferline = require 'bufferline'
    local underline_color = '#FF5599'
    local selected_text_color = '#FF5599'
    bufferline.setup {
      options = {
        mode = 'buffers', -- set to "tabs" to only show tabpages instead
        style_preset = bufferline.style_preset.no_italic,
        themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
        numbers = 'none', -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = 'bdelete! %d', -- can be a string | function, see "Mouse actions"
        right_mouse_command = 'bdelete! %d', -- can be a string | function, see "Mouse actions"
        left_mouse_command = 'buffer %d', -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        buffer_close_icon = '✗',
        close_icon = '',
        path_components = 1, -- Show only the file name without the directory
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 30,
        max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
        tab_size = 21,
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match 'error' and ' ' or ' '
          return ' ' .. icon .. count
        end,
        color_icons = false,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        show_tab_indicators = true,
        separator_style = 'slant',
        indicator = {
          style = 'underline', -- Options: 'icon', 'underline', 'none'
        },
        icon_pinned = '󰐃',
        minimum_padding = 1,
        maximum_padding = 5,
        maximum_length = 15,
        sort_by = 'insert_at_end',
      },
      highlights = {
        buffer_selected = {
          fg = selected_text_color,
          underline = true,
          sp = underline_color,
        },
        tab_separator_selected = {
          sp = underline_color,
          underline = true,
        },
        separator_selected = {
          sp = underline_color,
          underline = true,
        },
        indicator_selected = {
          underline = true,
          sp = underline_color,
        },
        pick_selected = {
          underline = true,
          sp = underline_color,
        },
        modified_selected = {
          underline = true,
          sp = underline_color,
        },
        close_button_selected = {
          underline = true,
          sp = underline_color,
        },
        hint = {
          sp = underline_color,
        },
        hint_selected = {
          fg = selected_text_color,
          sp = underline_color,
        },
        hint_diagnostic = {
          sp = underline_color,
        },
        hint_diagnostic_selected = {
          fg = selected_text_color,
          sp = underline_color,
        },
        info = {
          sp = underline_color,
        },
        info_selected = {
          fg = selected_text_color,
          sp = underline_color,
        },
        info_diagnostic = {
          sp = underline_color,
        },
        info_diagnostic_selected = {
          fg = selected_text_color,
          sp = underline_color,
        },
        warning = {
          sp = underline_color,
        },
        warning_selected = {
          fg = selected_text_color,
          sp = underline_color,
        },
        warning_diagnostic = {
          sp = underline_color,
        },
        warning_diagnostic_selected = {
          fg = selected_text_color,
          sp = underline_color,
        },
        error = {
          sp = underline_color,
        },
        error_selected = {
          fg = selected_text_color,
          sp = underline_color,
        },
        error_diagnostic = {
          sp = underline_color,
        },
        error_diagnostic_selected = {
          fg = selected_text_color,
          sp = underline_color,
        },
      },
    }

    -- Keymaps
    local opts = { noremap = true, silent = true, desc = 'Go to Buffer' }
    vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
    vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
    vim.keymap.set('n', '<leader>1', "<cmd>lua require('bufferline').go_to_buffer(1)<CR>", opts)
    vim.keymap.set('n', '<leader>2', "<cmd>lua require('bufferline').go_to_buffer(2)<CR>", opts)
    vim.keymap.set('n', '<leader>3', "<cmd>lua require('bufferline').go_to_buffer(3)<CR>", opts)
    vim.keymap.set('n', '<leader>4', "<cmd>lua require('bufferline').go_to_buffer(4)<CR>", opts)
    vim.keymap.set('n', '<leader>5', "<cmd>lua require('bufferline').go_to_buffer(5)<CR>", opts)
    vim.keymap.set('n', '<leader>6', "<cmd>lua require('bufferline').go_to_buffer(6)<CR>", opts)
    vim.keymap.set('n', '<leader>7', "<cmd>lua require('bufferline').go_to_buffer(7)<CR>", opts)
    vim.keymap.set('n', '<leader>8', "<cmd>lua require('bufferline').go_to_buffer(8)<CR>", opts)
    vim.keymap.set('n', '<leader>9', "<cmd>lua require('bufferline').go_to_buffer(9)<CR>", opts)
  end,
}
