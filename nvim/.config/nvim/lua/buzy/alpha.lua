
-- to customize the buttons, see :h alpha-example
-- https://github.com/Shatur/neovim-session-manager (:h :mks)

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
-- local dashboard = require("alpha.themes.startify")

-- https://github.com/dtr2300/nvim/blob/main/lua/config/utils/headers.lua
-- dashboard.section.header.val = {
-- 	[[                               __                ]],
-- 	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
-- 	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
-- 	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
-- 	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
-- 	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
-- }

dashboard.section.header.val = {
 [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
 [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
 [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
 [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
 [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
 [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

-- dashboard.section.buttons.val = {
--   dashboard.button("<leader>   f", "   File Browser", ":Telescope file_browser <CR>"),
--   dashboard.button("<leader> e n", "   New File", ":ene <BAR> startinsert <CR>"),
--   dashboard.button("<leader> f p", "   Find Project", ":Telescope projects <CR>"),
--   dashboard.button("<leader> f h", "   Recently Files", ":Telescope oldfiles <CR>"),
--   dashboard.button("<leader> f t", "   Find Text", ":Telescope live_grep <CR>"),
--    -- don't need because packer auto updates plugins every startup
--   dashboard.button("<leader>   u", "   Update Plugins", ":PackerUpdate <CR>"),
--   dashboard.button("<leader> i p", "   Add/Remove Plugins", ":e ~/.config/nvim/lua/core/plugins.lua<CR>"),
--   dashboard.button("<leader> e v", "   Configuration", ":e ~/.config/nvim/lua/config.lua <CR>"),
--   dashboard.button("<leader>   q", "   Quit Neovim", ":qa<CR>"),
-- }

-- local function footer()
-- -- NOTE: requires the fortune-mod package to work
-- 	-- local handle = io.popen("fortune")
-- 	-- local fortune = handle:read("*a")
-- 	-- handle:close()
-- 	-- return fortune

-- 	-- local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))
-- 	-- local datetime = os.date("  %m-%d-%Y   %H:%M:%S")
-- 	-- local version = vim.version()
-- 	-- local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch
-- 	-- return datetime .. "   Plugins " .. plugins_count .. nvim_version_info

-- 	return "buzyvim"
-- end
-- dashboard.section.footer.val = footer()

local fortune = require("alpha.fortune")
dashboard.section.footer.val = fortune()

dashboard.section.footer.opts.hl = "Type"
-- dashboard.section.header.opts.hl = "Include"
-- dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
