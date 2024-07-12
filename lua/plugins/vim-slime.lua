return {
    {
        'jpalardy/vim-slime',
        config = function()
            vim.g.slime_target = "neovim"
            vim.g.slime_bracketed_paste = 1
        end
    }
}
