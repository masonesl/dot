return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons'
    },
    opts = {
        heading = {
            icons = { ' 󰴈 ', ' 󰮊 ', ' 󰫢 ', '  ', '  ', ' 󰪥 ', '  ' }
        },
        code = {
            border       = 'thick',
            left_pad     = 2,
            language_pad = 1
        }
    }
}
