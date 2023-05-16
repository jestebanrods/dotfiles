require('core.globals')
require('core.options')

vim.api.nvim_create_autocmd('User', {
    group = vim.api.nvim_create_augroup('LazyVim', { clear = true }),
    pattern = 'VeryLazy',
    callback = function()
        require('core.autocmds')
        require('core.keymaps')
    end,
})

require('core.lazy')
