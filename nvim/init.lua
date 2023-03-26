require('craftzdog.base')
require('craftzdog.highlights')
require('craftzdog.maps')
require('craftzdog.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
-- local is_win = has "win32"
-- local is_wsl = has "wsl"

if is_mac then
  require('craftzdog.macos')
end
-- if is_win then
--   require('craftzdog.windows')
-- end
-- if is_wsl then
--   require('craftzdog.wsl')
-- end

-- dap
require('dap-go').setup()
require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})

-- local status, _ = pcall(vim.cmd, "colorscheme moonfly")
-- if not status then
--   print("Colorscheme not found!") -- print error if colorscheme not installed
--   return
-- end