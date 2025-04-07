return {
    'saghen/blink.cmp',
    dependencies = {
        'MeanderingProgrammer/render-markdown.nvim',
        'Kaiser-Yang/blink-cmp-avante'
    },
    version      = '*',
    opts         = {
        keymap = { ['<C-e>'] = { 'show', 'show_documentation', 'hide_documentation' } },
        appearance = { use_nvim_cmp_as_default = true },
        completion = {
            ghost_text    = { enabled = true },
            menu          = { border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' } },
            documentation = { window = { border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' } } }
        },
        signature = { enabled = true },
        sources   = {
            default   = { 'avante', 'lsp', 'path', 'snippets', 'buffer', 'markdown' },
            providers = {
                markdown = {
                    name      = 'RenderMarkdown',
                    module    = 'render-markdown.integ.blink',
                    fallbacks = { 'lsp' }
                },
                avante = {
                    name   = 'Avante',
                    module = 'blink-cmp-avante',
                }
            }
        }
    }
}
