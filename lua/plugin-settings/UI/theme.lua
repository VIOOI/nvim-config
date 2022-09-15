local g = vim.g
local cmd = vim.cmd
vim.opt.background = "dark"
require('onedark').setup  {
    style = 'warm', 
		transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = true, -- reverse item kind highlights in cmp menu
    -- toggle theme style --
    toggle_style_key = '<C-t>s', -- Default keybinding to toggle
    toggle_style_list = {'warm', 'light'}, -- List of styles to toggle between

    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'bold',
        strings = 'none',
        variables = 'bold'
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
require('onedark').load()
