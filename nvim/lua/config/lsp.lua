local border = {
    { '╭', 'FloatBorder' },
    { '─', 'FloatBorder' },
    { '╮', 'FloatBorder' },
    { '│', 'FloatBorder' },
    { '╯', 'FloatBorder' },
    { '─', 'FloatBorder' },
    { '╰', 'FloatBorder' },
    { '│', 'FloatBorder' }
}

local open_floating_preview_default = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or border
    return open_floating_preview_default(contents, syntax, opts, ...)
end

local signs = { Error = '', Warn = '', Hint = '󰌶', Info = '' }
for type, icon in pairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local function lsp_attach_callback(event)
    local function set(keys, func, desc, mode)
        mode = mode or 'n'
        vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    set('gd', vim.g.telescope_menu('lsp_definitions'), '[G]oto [D]efinition')
    set('gr', vim.g.telescope_menu('lsp_references'), '[G]oto [R]eferences')
    set('gI', vim.g.telescope_menu('lsp_implementations'), '[G]oto [I]mplementation')
    set('<Leader>td', vim.g.telescope_menu('lsp_type_definitions'), '[T]ype [D]efinition')
    set('<Leader>ds', vim.g.telescope_menu('lsp_document_symbols'), '[D]ocument [S]ymbols')
    set('<Leader>ws', vim.g.telescope_menu('lsp_dynamic_workspace_symbols'), '[W]orspace [S]ymbols')
    set('<Leader>rn', vim.lsp.buf.rename, '[R]e[N]ame')
    set('<Leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
    set('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
end

vim.api.nvim_create_autocmd('LspAttach', {
    group    = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
    callback = lsp_attach_callback
})

require('mason').setup()

require('mason-lspconfig').setup({
    handlers = {
        function (server)
            local config = {}
            config.capabilities = require('blink.cmp').get_lsp_capabilities({}, true)

            require('lspconfig')[server].setup(config)
        end
    }
})
