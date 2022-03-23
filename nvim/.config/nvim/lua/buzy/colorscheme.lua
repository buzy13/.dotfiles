vim.cmd [[
try
  colorscheme monokai
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- local colorscheme = "default"

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end

------------------------------------------------------------------------------------------------------------------------

-- examples of customization for monokai --
-- require('monokai').setup {}
-- require('monokai').setup { palette = require('monokai').pro }
-- require('monokai').setup { palette = require('monokai').soda }
-- require('monokai').setup { palette = require('monokai').ristretto }

-- local monokai = require('monokai') -- no protected call version
-- local monokai_status_ok, monokai = pcall(require, "monokai")
-- if not monokai_status_ok then
--   return
-- end
-- local palette = monokai.classic
-- monokai.setup {
--   palette = {
--         name = 'monokai',
--         base1 = '#272a30',
--         base2 = '#26292C',
--         base3 = '#2E323C',
--         base4 = '#333842',
--         base5 = '#4d5154',
--         base6 = '#9ca0a4',
--         base7 = '#b1b1b1',
--         border = '#a1b5b1',
--         brown = '#504945',
--         white = '#f8f8f0',
--         grey = '#8F908A',
--         black = '#000000',
--         pink = '#f92672',
--         green = '#a6e22e',
--         aqua = '#66d9ef',
--         yellow = '#e6db74',
--         orange = '#fd971f',
--         purple = '#ae81ff',
--         red = '#e95678',
--         diff_add = '#3d5213',
--         diff_remove = '#4a0f23',
--         diff_change = '#27406b',
--         diff_text = '#23324d',
--     },
--     custom_hlgroups = {
--        TSInclude = {
--             fg = palette.aqua,
--         },
--         GitSignsAdd = {
--             fg = palette.green,
--             bg = palette.base2
--         },
--         GitSignsDelete = {
--             fg = palette.pink,
--             bg = palette.base2
--         },
--         GitSignsChange = {
--             fg = palette.orange,
--             bg = palette.base2
--     },
-- }
