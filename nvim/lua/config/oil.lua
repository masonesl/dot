require('oil').setup({
    columns = {
        'icon',
        'permissions'
    }
})

vim.keymap.set('n', '-', vim.cmd.Oil)
