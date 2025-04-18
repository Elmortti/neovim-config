-- Set custom colors foH theme
ColorMyPencils = function()
	vim.cmd("hi cursorline guibg=#1b293b")
	vim.cmd("hi cursorcolumn guibg=#1b293b")
end
ColorMyPencils()
-- vim.cmd("command! ColorMyPencils lua ColorMyPencils()")
vim.api.nvim_create_user_command("ColorMyPencils", "lua ColorMyPencils()", { bang = true })

-- Compile current file
CompileGpp = function(args)
	if args[1] == nil then
		args[1] = vim.fn.expand("%:t:r")
	elseif args[1]:sub(1, 1) == "-" then
		table.insert(args, 1, vim.fn.expand("%:t:r"))
	end
	local arg = ""

	table.insert(args, "")
	for i = 2, #args, 1 do
		arg = arg .. " " .. args[i]
	end

	vim.cmd("!g++ -o " .. args[1] .. " %" .. arg)
end
vim.cmd("command! -nargs=* CompileGpp lua CompileGpp({<f-args>})")


HighlightToHex = function(hl, prop)
	return string.format("#%x", vim.api.nvim_get_hl(0, { name = hl, link = false })[prop])
end
