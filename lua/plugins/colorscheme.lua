-- Theme/Colorscheme (uncomment section for whichever theme you prefer or use your own)
-- Kanagawa Theme (Custom Palette)

-- Kanagawa Theme (Original)
-- return {
--   -- https://github.com/rebelot/kanagawa.nvim
--   'rebelot/kanagawa.nvim', -- You can replace this with your favorite colorscheme
--   lazy = false, -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
--   opts = {
--     -- Replace this with your scheme-specific settings or remove to use the defaults
--     -- transparent = true,
--     background = {
--       -- light = "lotus",
--       dark = "wave", -- "wave, dragon"
--     },
--   },
--   config = function(_, opts)
--     require('kanagawa').setup(opts) -- Replace this with your favorite colorscheme
--     vim.cmd("colorscheme kanagawa") -- Replace this with your favorite colorscheme
--   end
-- }

-- Tokyo Night Theme
-- return {
--     -- https://github.com/folke/tokyonight.nvim
--     'folke/tokyonight.nvim', -- you can replace this with your favorite colorscheme
--     lazy = false,            -- we want the colorscheme to load immediately when starting neovim
--     priority = 1000,         -- load the colorscheme before other non-lazy-loaded plugins
--     opts = {
--         -- replace this with your scheme-specific settings or remove to use the defaults
--         transparent = true,
--         style = "night", -- other variations "storm, night, moon, day"
--     },
--     config = function(_, opts)
--         require('tokyonight').setup(opts) -- replace this with your favorite colorscheme
--         vim.cmd("colorscheme tokyonight") -- replace this with your favorite colorscheme
--     end
-- }

-- Catppuccin Theme
-- return {
--   -- https://github.com/catppuccin/nvim
--   'catppuccin/nvim',
--   name = "catppuccin", -- name is needed otherwise plugin shows up as "nvim" due to github URI
--   lazy = false, -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
--   opts = {
--   --   -- Replace this with your scheme-specific settings or remove to use the defaults
--     -- transparent = true,
--     flavour = "mocha", -- "latte, frappe, macchiato, mocha"
--   },
--   config = function(_, opts)
--     require('catppuccin').setup(opts) -- Replace this with your favorite colorscheme
--     vim.cmd("colorscheme catppuccin") -- Replace this with your favorite colorscheme
--   end
-- }

--Sonokai Theme
-- return {
-- https://github.com/sainnhe/sonokai
-- 'sainnhe/sonokai',
-- lazy = false,                     -- We want the colorscheme to load immediately when starting Neovim
-- priority = 1000,                  -- Load the colorscheme before other non-lazy-loaded plugins
-- config = function(_, opts)
--   vim.g.sonokai_style = "default" -- "default, atlantis, andromeda, shusia, maia, espresso"
--   vim.cmd("colorscheme sonokai")  -- Replace this with your favorite colorscheme
-- To make the background transparent
-- end
--}

-- one nord theme
-- return {
--   -- https://github.com/rmehri01/onenord.nvim
-- 'rmehri01/onenord.nvim',
-- lazy = true, -- we want the colorscheme to load immediately when starting neovim
-- priority = 1000, -- load the colorscheme before other non-lazy-loaded plugins
-- config = function(_, opts)
--   vim.cmd("colorscheme onenord") -- replace this with your favorite colorscheme
-- end
-- }
--
-- return {
-- {
--     'morhetz/gruvbox',
--     config = function()
--         vim.cmd('colorscheme gruvbox')
--                     vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
--     end
-- }
-- }
--
-- return {
--     {
--         'olimorris/onedarkpro.nvim',
--         lazy = true,
--         priority = 1000,
--         config = function()
--             require('onedarkpro').setup()
--             vim.cmd('colorscheme onedarkpro')
--             vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
--         end
--     }
-- }

-- return {
-- {
-- 'altercation/vim-colors-solarized',
-- config = function()
--     vim.cmd('colorscheme solarized')
--      vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
-- end
-- }
-- }
--
-- return {
--     {
--         'arcticicestudio/nord-vim',
--         config = function()
--             vim.g.nord_disable_background = true
--             vim.cmd('colorscheme nord')
--         end
--     }
-- }
--
return {
    {
        'marko-cerovac/material.nvim',
        config = function()
            require('material').setup({
                disable = {
                    background = true,
                },
            })
            vim.cmd('colorscheme material')
        end
    }
}

-- return {
--     {
--         'EdenEast/nightfox.nvim',
--         config = function()
--             require('nightfox').setup({
--                 options = {
--                     transparent = true,
--                 }
--             })
--             vim.cmd('colorscheme nightfox')
--         end
--     }
-- }
