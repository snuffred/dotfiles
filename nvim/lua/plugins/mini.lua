return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require('mini.pairs').setup()
    require('mini.comment').setup()
    require('mini.statusline').setup()
    require('mini.tabline').setup()
    require('mini.icons').setup()

    -- jump to buffer/tab
    for i = 1, 9 do
      vim.keymap.set('n', '<leader>' .. i, function()
        local bufs = vim.tbl_filter(function(buf)
          return vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].buflisted
        end, vim.api.nvim_list_bufs())
        if bufs[i] then
          vim.api.nvim_set_current_buf(bufs[i])
        end
      end, { desc = 'Go to buffer ' .. i })
    end
  end
}
