return {
  'voldikss/vim-floaterm',
  keys = {
    { '<leader>t', ':FloatermToggle<CR>', desc = 'Toggle Floaterm', silent = true },
  },
  config = function()
    -- Floaterm Settings
    vim.g.floaterm_width = 0.9 -- 90% of the window width
    vim.g.floaterm_height = 0.8 -- 80% of the window height
    vim.g.floaterm_wintype = 'float' -- Ensure it opens as a floating window
    vim.g.floaterm_borderchars = '─│─│╭╮╯╰' -- Rounded border
    vim.g.floaterm_autoclose = 2 -- Automatically close when process exits

    -- Keymaps for opening and closing Floaterm
    vim.api.nvim_set_keymap('n', '<leader>t', ':FloatermToggle<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('t', '<leader>t', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true, silent = true })

    -- Customize Floaterm Colors
    vim.api.nvim_set_hl(0, 'FloatermBorder', { fg = '#a6e3a1', bg = '#1e1e2e' }) -- Border color
    vim.api.nvim_set_hl(0, 'Floaterm', { bg = '#1e1e2e' }) -- Background color
  end,
}
