return {
	{
		"chrisgrieser/nvim-rip-substitute",
		cmd = "RipSubstitute",
		keys = {
			{ "<leader>fs", function() require("rip-substitute").sub() end, mode = { "n", "x" }, desc = " rip substitute", },
		},
		-- Configuration
		config = function()
			-- default settings
			require("rip-substitute").setup {
				popupWin = {
					title = " rip-substitute",
					border = "single",
					matchCountHlGroup = "Keyword",
					noMatchHlGroup = "ErrorMsg",
					hideSearchReplaceLabels = false,
					---@type "top"|"bottom"
					position = "top",
				},

				prefill = {
					---@type "cursorWord"| false
					normal = "cursorWord",
					---@type "selectionFirstLine"| false does not work with ex-command (see README).
					visual = "selectionFirstLine",
					startInReplaceLineIfPrefill = false,
					alsoPrefillReplaceLine = false,
				},

				keymaps = { -- normal & visual mode, if not stated otherwise
					abort = "q",
					confirm = "<CR>",
					insertModeConfirm = "<C-CR>",
					prevSubst = "<Up>",
					nextSubst = "<Down>",
					toggleFixedStrings = "<C-f>", -- ripgrep's `--fixed-strings`
					toggleIgnoreCase = "<C-c>", -- ripgrep's `--ignore-case`
					openAtRegex101 = "R",
				},

				incrementalPreview = {
					matchHlGroup = "IncSearch",
					rangeBackdrop = {
						enabled = true,
						blend = 50, -- between 0 and 100
					},
				},

				regexOptions = {
					startWithFixedStringsOn = false,
					startWithIgnoreCase = false,
					-- pcre2 enables lookarounds and backreferences, but performs slower
					pcre2 = true,
					-- disable if you use named capture groups (see README for details)
					autoBraceSimpleCaptureGroups = true,
				},

				editingBehavior = {
					-- When typing `()` in the `search` line, automatically adds `$n` to the
					-- `replace` line.
					autoCaptureGroups = true,
				},

				notificationOnSuccess = true,
			}
		end
	},
}
