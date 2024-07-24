-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- This has to be set before initializing lazy
vim.g.mapleader = " "

-- Initialize lazy with dynamic loading of anything in the plugins directory
require("lazy").setup("plugins", {
    change_detection = {
        enabled = true, -- automatically check for config file changes and reload the ui
        notify = false, -- turn off notifications whenever plugin changes are made
    },
})

-- These modules are not loaded by lazy
require("core.options")
require("core.keymaps")

vim.g.python3_host_prog = '/usr/bin/python'

vim.g.slime_target = "neovim"
vim.g.slime_bracketed_paste = 1

-- vim-dadbod completion setup
vim.cmd [[
  autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer { sources = {{ name = 'vim-dadbod-completion' }} }
]]

-- SQLs.nvim setup
require('lspconfig').sqls.setup {
    settings = {
        sqls = {
            connections = {
                {
                    driver = 'postgresql',
                    dataSourceName = 'host=127.0.0.1 port=5432 user=postgres password=postgres dbname=postgres sslmode=disable',
                },
                {
                    driver = 'mysql',
                    dataSourceName = 'username:password@tcp(127.0.0.1:3306)/database',
                },
            },
        },
    },
}

-- This is for transparent background
vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE ctermbg=NONE
  hi VertSplit guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
  hi StatusLine guibg=NONE ctermbg=NONE
  hi StatusLineNC guibg=NONE ctermbg=NONE
  hi Pmenu guibg=NONE ctermbg=NONE
  hi PmenuSbar guibg=NONE ctermbg=NONE
  hi PmenuThumb guibg=NONE ctermbg=NONE
  hi PmenuSel guibg=NONE ctermbg=NONE
]]
