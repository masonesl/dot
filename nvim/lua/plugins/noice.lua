return {
    'folke/noice.nvim',
    event        = 'VeryLazy',
    dependencies = {
        'MunifTanjim/nui.nvim',
        'rcarriga/nvim-notify'
    },
    keys = {
        { '<Leader>nd', vim.cmd.NoiceDismiss }
    },
    config = true
}
