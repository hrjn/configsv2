local builtin = require('telescope.builtin')

-- Remaps for telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})

-- Git pickers
vim.keymap.set('n', '<leader>vc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>vb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>vh', builtin.git_stash, {})
vim.keymap.set('n', '<leader>vs', builtin.git_status, {})
