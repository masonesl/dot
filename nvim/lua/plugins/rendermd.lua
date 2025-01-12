return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons'
    },
    opts = {
        heading = {
            border         = true,
            border_virtual = true,
            icons          = { ' 󰴈 ', ' 󰮊 ', ' 󰫢 ', '  ', '  ', ' 󰪥 ', '  ' }
        },
        code = {
            style         = 'normal',
            border        = 'thick',
            language_name = false,
            left_pad      = 2,
            language_pad  = 1
        }
    }
}
