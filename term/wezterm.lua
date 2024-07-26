local wezterm = require("wezterm")

return {
	font = wezterm.font("JetBrains Mono", {
		weight = "Regular",
	}),
	-- use_fancy_tab_bar = true,
	color_scheme = "Tokyo Night Storm",
	-- colors = {
	-- 	ansi = {
	-- 		"#5f564f",
	-- 		"#d6625c",
	-- 		"#a9b665",
	-- 		"#d8a657",
	-- 		"#7daea3",
	-- 		"#d3869b",
	-- 		"#89b482",
	-- 		"#D4BE98",
	-- 	},
	-- 	background = "#282828",
	-- 	brights = {
	-- 		"#5f564f",
	-- 		"#d6625c",
	-- 		"#a9b665",
	-- 		"#d8a657",
	-- 		"#7daea3",
	-- 		"#d3869b",
	-- 		"#89b482",
	-- 		"#D4BE98",
	-- 	},
	-- 	cursor_bg = "#e6d4a3",
	-- 	cursor_border = "#e6d4a3",
	-- 	cursor_fg = "#1e1e1e",
	-- 	foreground = "#d4be98",
	-- 	selection_bg = "#d4be98",
	-- 	selection_fg = "#45403d",
	-- 	tab_bar = {
	-- 		background = "#282828",
	-- 		active_tab = {
	-- 			bg_color = "#1e1e1e",
	-- 			fg_color = "#e6d4a3",
	-- 			intensity = "Half",
	-- 		},
	-- 		inactive_tab = {
	-- 			bg_color = "#282828",
	-- 			fg_color = "#5f564f",
	-- 			intensity = "Half",
	-- 		},
	-- 	},
	-- },
	window_frame = {
		font = wezterm.font("JetBrains Mono", {
			weight = "Medium",
		}),
		font_size = 16.0,
		-- active_titlebar_bg = "#282828",
		-- inactive_titlebar_bg = "#282828",
	},
	audible_bell = "Disabled",
}
