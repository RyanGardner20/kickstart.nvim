return {
  'isak102/telescope-git-file-history.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'tpope/vim-fugitive',
  },
  vim.api.nvim_set_keymap('n', '<leader>gh', '<cmd>Telescope git_file_history<CR>', { noremap = true, silent = true }),
}
