-- local alpha = require("alpha")
-- local dashboard = require("alpha.themes.dashboard")
-- _Gopts = {
-- 	position = "center",
-- 	hl = "Type",
-- 	wrap = "overflow",
-- }

-- local function load_random_header()
-- 	math.randomseed(os.time())
-- 	local header_folder = "~/.config/nvim/lua/config/startup_images"
-- 	local files = vim.fn.globpath(header_folder, "*.lua", true, true)
-- 	if #files == 0 then
-- 		return nil
-- 	end
-- 	-- local random_file = files[math.random(#files)]
-- 	local module_name = "config.startup_images." .. "blue_eyed"
-- 	return require(module_name).header
-- end

-- local function change_header()
-- 	local new_header = load_random_header()
-- 	if new_header then
-- 		dashboard.config.layout[2] = new_header
-- 		vim.cmd("AlphaRedraw")
-- 	else
-- 		print("Header files are missing from the folder header_img.")
-- 	end
-- end

-- -- Inicjalne załadowanie nagłówka
-- local header = load_random_header()
-- if header then
-- 	dashboard.config.layout[2] = header
-- else
-- 	print("Header files are missing from the folder header_img.")
-- end
return {
  'goolord/alpha-nvim',
  dependencies = { 'echasnovski/mini.icons' ,
  'nvim-lua/plenary.nvim'},
  config = function ()
      require'alpha'.setup(require'alpha.themes.theta'.config)
  end
};

-- local alpha = require("alpha")
-- local dashboard = require("alpha.themes.dashboard")
-- local icons = require("user.utils").icons
-- local utils = require("user.utils")
-- local datetime = os.date(" %H:%M. ")
-- local num_plugins_loaded = require("lazy").stats().loaded

-- dashboard.section.header.val = require("user.utils.alpha-headers")

-- dashboard.section.buttons.val = {
--   dashboard.button("e", icons.ui.file .. "  New file", "<cmd>enew<CR>"),
--   dashboard.button(
--     "o",
--     icons.ui.file .. "  Recent Files",
--     "<cmd>Telescope oldfiles<cr>"
--   ),
--   dashboard.button(
--     "f",
--     icons.ui.open_folder .. "  Explorer",
--     "<cmd>Explore<cr>"
--   ),
--   dashboard.button(
--     "c",
--     icons.ui.config .. "  Neovim config",
--     "<cmd>e ~/.config/nvim/lua/user/ | cd %:p:h<cr>"
--   ),
--   dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<cr>"),
--   dashboard.button("q", icons.ui.close .. "  Quit NVIM", ":qa<CR>"),
-- }

-- local footer = {
--   type = "text",
--   val = { "⚡" .. num_plugins_loaded .. " plugins loaded." },
--   opts = { position = "center", hl = "Comment" },
-- }

-- local bottom_section = {
--   type = "text",
--   val = "Hi "
--     .. utils.get_user()
--     .. ","
--     .. " It's"
--     .. datetime
--     .. "How are you doing today?",
--   opts = {
--     position = "center",
--   },
-- }

-- local section = {
--   header = dashboard.section.header,
--   bottom_section = bottom_section,
--   buttons = dashboard.section.buttons,
--   footer = footer,
-- }

-- local opts = {
--   layout = {
--     { type = "padding", val = 8 },
--     section.header,
--     { type = "padding", val = 2 },
--     section.buttons,
--     { type = "padding", val = 1 },
--     section.bottom_section,
--     { type = "padding", val = 1 },
--     section.footer,
--   },
-- }

-- alpha.setup(opts)

