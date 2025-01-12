return {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = { library = {
        { path = 'luvit-meta/library', word = { 'vim%.uv' } }
    }}
}
