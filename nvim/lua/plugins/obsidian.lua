return {
    'epwalsh/obsidian.nvim',
    version      = '*',
    ft           = 'markdown',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts         = {
        workspaces = {
            { name = 'personal', path = '~/Documents/obsidian/personal/' }
        },
        ui = { enable = false }
    },
}
