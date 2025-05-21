return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      -- Optional: customize here
      open_mapping = [[<C-\>]],
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
    }
  end,
  keys = {
    { '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', desc = 'Terminal (horizontal)' },
    { '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>', desc = 'Terminal (vertical)' },
    { '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', desc = 'Terminal (float)' },
    { '<leader>tt', '<cmd>ToggleTerm<CR>', desc = 'Toggle Terminal' },
  },
}
