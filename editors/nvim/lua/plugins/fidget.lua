-- LSP Loading Progress Display.
return {
	"j-hui/fidget.nvim",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	opts = {
		text = {
			spinner = "circle_halves",
		},
		timer = {
			spinner_rate = 65,
			fidget_decay = 200,
			task_decay = 100,
		},
		fmt = {
			fidget = function(fidget_name, spinner)
				return string.format("%s %s ", spinner, string.upper(fidget_name))
			end,
			task = function(task_name, message, percentage)
				return string.format(
					"%s%s [%s] ",
					message,
					percentage and string.format(" (%s%%)", percentage) or "",
					string.upper(task_name)
				)
			end,
		},
	}
}
