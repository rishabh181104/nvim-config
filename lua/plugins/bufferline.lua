return
{
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',   -- Optional dependency for file icons
  config = function()
    require('bufferline').setup {
      options = {
        -- Add your bufferline options here
        numbers = "both",            -- Show buffer numbers
        diagnostics = "nvim_lsp",    -- Show LSP diagnostics
        separator_style = "slant",   -- Customize separator style
        -- Add other options as needed
      }
    }
  end
}
