require('lspsaga').setup{}


local keymap = vim.keymap.set

-- local saga = require('lspsaga')
-- saga.init_lsp_saga({
--   -- Error, Warn, Info, Hint
--   diagnostic_header = { "🚨 ", "⚠️  ", "ℹ️  ", "😉 " }
-- })

-- Lsp finder find the symbol definition implmement reference
keymap("n", "<leader>gr", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

-- Code action
-- keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
-- keymap("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })

-- Rename
-- keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { silent = true })

-- Definition preview
keymap("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Show line diagnostics
keymap("n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Show cursor diagnostic
-- keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- Diagnsotic jump
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

-- Only jump to error
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

-- Outline
keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { silent = true })

-- Hover Doc
-- keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })


-- ToggleTerm already does this
-- -- Float terminal
-- keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
-- -- if you want pass somc cli command into terminal you can do like this
-- -- open lazygit in lspsaga float terminal
-- keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>", { silent = true })
-- -- close floaterm
-- keymap("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })


-- Deprecated
-- -- Signature help
-- keymap("n", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", { silent = true })

-- local action = require("lspsaga.action")
-- -- scroll in hover doc or  definition preview window
-- vim.keymap.set("n", "<C-f>", function()
--   action.smart_scroll_with_saga(1)
-- end, { silent = true })
-- -- scroll in hover doc or  definition preview window
-- vim.keymap.set("n", "<C-b>", function()
--   action.smart_scroll_with_saga(-1)
-- end, { silent = true })
