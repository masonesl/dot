return {
    'christoomey/vim-tmux-navigator',
    cmd = {
        'TmuxNavigateLeft',
        'TmuxNavigateDown',
        'TmuxNavigateUp',
        'TmuxNavigateRight',
        'TmuxNavigatePrevious',
        'TmuxNavigatorProcessList',
    },
    keys = {
        { '<C-h>', function () vim.cmd.TmuxNavigateLeft()  end },
        { '<C-j>', function () vim.cmd.TmuxNavigateDown()  end },
        { '<C-k>', function () vim.cmd.TmuxNavigateUp()    end },
        { '<C-l>', function () vim.cmd.TmuxNavigateRight() end }
    }
}
