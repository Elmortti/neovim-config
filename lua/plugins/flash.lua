return {
	{
		"folke/flash.nvim",
		priority = 0,
		keys = {
			{ "<M-C-s>", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
			{ "š", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
			{ "ß", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },

			{ "<M-C-S-s>", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
			{ "Š", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
			{ "ẞ", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },

			{ "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
			{ "<C-r>", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
			{ "<C-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
		},
	}
}
