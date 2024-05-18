-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "one_monokai",  -- Set the colorscheme to 'one_monokai'
    },
  },
  {
    "cpea2506/one_monokai.nvim",  -- Include the One Monokai theme plugin
    config = function()
      -- Configure and activate the One Monokai theme with transparency
      require("one_monokai").setup({
        transparent = true,  -- Enable transparency
        italics = true,      -- Enable italics
        -- Additional configurations can be set here if needed
      })
      vim.cmd([[colorscheme one_monokai]])  -- Ensure to set the colorscheme after setup
    end,
  },
}

