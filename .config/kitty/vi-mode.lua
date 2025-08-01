-- local api = vim.api
-- local orig_buf = api.nvim_get_current_buf()
-- local term_buf = api.nvim_create_buf(false, true)
-- api.nvim_set_current_buf(term_buf)
-- vim.bo.scrollback = 100000
-- local term_chan = api.nvim_open_term(0, {})
-- api.nvim_chan_send(term_chan, table.concat(api.nvim_buf_get_lines(orig_buf, 0, -1, true), "\r\n"))
-- vim.fn.chanclose(term_chan)
-- api.nvim_buf_set_lines(orig_buf, 0, -1, true, api.nvim_buf_get_lines(term_buf, 0, -1, true))
-- api.nvim_set_current_buf(orig_buf)
-- api.nvim_buf_delete(term_buf, { force = true })
-- vim.bo.modified = false
-- api.nvim_win_set_cursor(0, { api.nvim_buf_line_count(0), 0 })

local function colorize()
	vim.wo.number = false
	vim.wo.relativenumber = false
	vim.wo.statuscolumn = ""
	vim.wo.signcolumn = "no"
	local orig_buf = vim.api.nvim_get_current_buf()
	local lines = vim.api.nvim_buf_get_lines(orig_buf, 0, -1, false)
	while #lines > 0 and vim.trim(lines[#lines]) == "" do
		lines[#lines] = nil
	end
	local buf = vim.api.nvim_create_buf(false, true)
	local channel = vim.api.nvim_open_term(buf, {})
	vim.api.nvim_chan_send(channel, table.concat(lines, "\r\n"))
	vim.api.nvim_set_current_buf(buf)
	vim.keymap.set("n", "q", "<cmd>qa!<cr>", { silent = true, buffer = buf })
	vim.api.nvim_create_autocmd("TermEnter", { buffer = buf, command = "stopinsert" })
	vim.defer_fn(function()
		-- go to the end of the terminal buffer
		vim.cmd.startinsert()
	end, 10)
end

colorize()
